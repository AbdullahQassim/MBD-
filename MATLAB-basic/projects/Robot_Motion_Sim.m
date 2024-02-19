classdef Robot_Motion_Sim < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure          matlab.ui.Figure
        UIAxes            matlab.ui.control.UIAxes
        SimulationButton  matlab.ui.control.Button
        Lamp              matlab.ui.control.Lamp
        L1EditFieldLabel  matlab.ui.control.Label
        L1EditField       matlab.ui.control.NumericEditField
        L2EditFieldLabel  matlab.ui.control.Label
        L2EditField       matlab.ui.control.NumericEditField
        ONOFFSwitchLabel  matlab.ui.control.Label
        ONOFFSwitch       matlab.ui.control.Switch
    end

    methods (Access = private)

        % Button pushed function: SimulationButton
        function SimulationButtonPushed(app, event)
hold(app.UIAxes,'off')
L1 = app.L1EditField.Value;
L2 = app.L2EditField.Value;
Theta1 = linspace(0,90,1000);
Theta2 = linspace(0,180,1000);

X1 = L1*cosd(Theta1); Y1 = L1*sind(Theta1);
X2 = X1+L2*cosd(Theta1+Theta2); Y2 = Y1+L2*sind(Theta1+Theta2);

P1 = plot(app.UIAxes , [0 , X1(1)] , [0,Y1(1)] ,'Color','r','LineWidth',3);
hold(app.UIAxes,'on')
P2 = plot(app.UIAxes , [X1(1) , X2(1)] , [Y1(1),Y2(1)] ,'Color','k','LineWidth',3);
xlim(app.UIAxes , [-L1*2 , L1*2])
ylim(app.UIAxes , [-L1*2 , L1*2])
while (app.ONOFFSwitch.Value=="On")
    app.Lamp.Color = 'green';
    for i= 1:10:length(Theta1) %make step is 10
        delete(P1); delete(P2);
        P1 = plot(app.UIAxes , [0 , X1(i)] , [0,Y1(i)] ,'Color','r','LineWidth',4);
        P2 = plot(app.UIAxes , [X1(i) , X2(i)] , [Y1(i),Y2(i)] ,'Color','k','LineWidth',4);
        drawnow
        pause(0.1)
    end
end
app.Lamp.Color = 'red';
        end
    end

    % App initialization and construction
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure
            app.UIFigure = uifigure;
            app.UIFigure.Position = [100 100 712 505];
            app.UIFigure.Name = 'UI Figure';

            % Create UIAxes
            app.UIAxes = uiaxes(app.UIFigure);
            title(app.UIAxes, 'Live Simulation')
            xlabel(app.UIAxes, 'X-Axis')
            ylabel(app.UIAxes, 'Y-Axis')
            app.UIAxes.FontName = 'Arial';
            app.UIAxes.FontWeight = 'bold';
            app.UIAxes.Box = 'on';
            app.UIAxes.Color = [0.8 0.8 0.8];
            app.UIAxes.XGrid = 'on';
            app.UIAxes.YGrid = 'on';
            app.UIAxes.Position = [143 122 428 376];

            % Create SimulationButton
            app.SimulationButton = uibutton(app.UIFigure, 'push');
            app.SimulationButton.ButtonPushedFcn = createCallbackFcn(app, @SimulationButtonPushed, true);
            app.SimulationButton.BackgroundColor = [1 1 1];
            app.SimulationButton.FontWeight = 'bold';
            app.SimulationButton.Position = [589 339 100 22];
            app.SimulationButton.Text = 'Simulation';

            % Create Lamp
            app.Lamp = uilamp(app.UIFigure);
            app.Lamp.Position = [629 299 20 20];
            app.Lamp.Color = [1 1 1];

            % Create L1EditFieldLabel
            app.L1EditFieldLabel = uilabel(app.UIFigure);
            app.L1EditFieldLabel.HorizontalAlignment = 'right';
            app.L1EditFieldLabel.FontSize = 14;
            app.L1EditFieldLabel.FontWeight = 'bold';
            app.L1EditFieldLabel.Position = [143 53 25 22];
            app.L1EditFieldLabel.Text = 'L1';

            % Create L1EditField
            app.L1EditField = uieditfield(app.UIFigure, 'numeric');
            app.L1EditField.Limits = [0 20];
            app.L1EditField.Position = [183 53 100 22];

            % Create L2EditFieldLabel
            app.L2EditFieldLabel = uilabel(app.UIFigure);
            app.L2EditFieldLabel.HorizontalAlignment = 'right';
            app.L2EditFieldLabel.FontSize = 14;
            app.L2EditFieldLabel.FontWeight = 'bold';
            app.L2EditFieldLabel.Position = [431 53 25 22];
            app.L2EditFieldLabel.Text = 'L2';

            % Create L2EditField
            app.L2EditField = uieditfield(app.UIFigure, 'numeric');
            app.L2EditField.Limits = [0 20];
            app.L2EditField.Position = [471 53 100 22];
            app.L2EditField.Value = 20;

            % Create ONOFFSwitchLabel
            app.ONOFFSwitchLabel = uilabel(app.UIFigure);
            app.ONOFFSwitchLabel.HorizontalAlignment = 'center';
            app.ONOFFSwitchLabel.Position = [55 281 47 22];
            app.ONOFFSwitchLabel.Text = 'ONOFF';

            % Create ONOFFSwitch
            app.ONOFFSwitch = uiswitch(app.UIFigure, 'slider');
            app.ONOFFSwitch.Position = [55 318 45 20];
        end
    end

    methods (Access = public)

        % Construct app
        function app = Robot_Motion_Sim

            % Create and configure components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end