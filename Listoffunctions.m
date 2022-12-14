classdef CMPT439_FinalProejct_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                       matlab.ui.Figure
        ThresholdValueEditField        matlab.ui.control.EditField
        ThresholdValueEditFieldLabel   matlab.ui.control.Label
        ErrorEditField                 matlab.ui.control.EditField
        ErrorEditFieldLabel            matlab.ui.control.Label
        ChooseastoppingcriterionDropDown  matlab.ui.control.DropDown
        ChooseastoppingcriterionDropDownLabel  matlab.ui.control.Label
        EnteranAugmentedMatrixEditFieldLabel_2  matlab.ui.control.Label
        RootsTextArea                  matlab.ui.control.TextArea
        RootsTextAreaLabel             matlab.ui.control.Label
        IsthematrixdiagonallydominantTextArea  matlab.ui.control.TextArea
        IsthematrixdiagonallydominantTextAreaLabel  matlab.ui.control.Label
        StartingApproxmationEditField  matlab.ui.control.EditField
        StartingApproxmationEditFieldLabel  matlab.ui.control.Label
        EnteranAugmentedMatrixEditField  matlab.ui.control.EditField
        EnteranAugmentedMatrixEditFieldLabel  matlab.ui.control.Label
        ChooseMethodDropDown           matlab.ui.control.DropDown
        ChooseMethodDropDownLabel      matlab.ui.control.Label
        CalculateButton                matlab.ui.control.Button
    end



    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: CalculateButton
        function CalculateButtonPushed(app, event)
            value = app.CalculateButtonPushed.Value;
            app.CalculateButtonPushed.FontColor = '0.00,0.00,0.00';
            app.CalculateButtonPushed.BackgroundColor = 'none';
            app.CalculateButtonPushed.FontName = 'Helvetica';
            app.CalculateButtonPushed.FontSize = 13;
        end

        % Value changed function: EnteranAugmentedMatrixEditField
        function EnteranAugmentedMatrixEditFieldValueChanged(app, event)
            value = app.EnteranAugmentedMatrixEditField.Value;
            app.EnteranAugmentedMatrixEditField.FontColor = '0.00,0.00,0.00';
            app.EnteranAugmentedMatrixEditField.BackgroundColor = 'none';
            app.EnteranAugmentedMatrixEditField.FontName = 'Helvetica';
            app.EnteranAugmentedMatrixEditField.FontSize = 13;
        end

        % Value changed function: StartingApproxmationEditField
        function StartingApproxmationEditFieldValueChanged(app, event)
            value = app.StartingApproxmationEditFieldValueChanged.Value;
            app.StartingApproxmationEditFieldValueChanged.FontColor = '0.00,0.00,0.00';
            app.StartingApproxmationEditFieldValueChanged.BackgroundColor = 'none';
            app.StartingApproxmationEditFieldValueChanged.FontName = 'Helvetica';
            app.StartingApproxmationEditFieldValueChanged.FontSize = 13;
        end

        % Value changed function: ThresholdValueEditField
        function ThresholdValueEditFieldValueChanged(app, event)
            value = app.ThresholdValueEditFieldValueChanged.Value;
            app.ThresholdValueEditFieldValueChanged.FontColor = '0.00,0.00,0.00';
            app.ThresholdValueEditFieldValueChanged.BackgroundColor = 'none';
            app.ThresholdValueEditFieldValueChanged.FontName = 'Helvetica';
            app.ThresholdValueEditFieldValueChanged.FontSize = 13;
        end

        % Value changed function: IsthematrixdiagonallydominantTextArea
        function IsthematrixdiagonallydominantTextAreaValueChanged(app, event)
            value = app.ThresholdValueEditFieldValueChanged.Value;
            app.ThresholdValueEditFieldValueChanged.FontColor = '0.00,0.00,0.00';
            app.ThresholdValueEditFieldValueChanged.BackgroundColor = 'none';
            app.ThresholdValueEditFieldValueChanged.FontName = 'Helvetica';
            app.ThresholdValueEditFieldValueChanged.FontSize = 13;
        end

        % Value changed function: RootsTextArea
        function RootsTextAreaValueChanged(app, event)
            value = app.RootsTextAreaValueChanged.Value;
            app.RootsTextAreaValueChanged.FontColor = '0.00,0.00,0.00';
            app.RootsTextAreaValueChanged.BackgroundColor = 'none';
            app.RootsTextAreaValueChanged.FontName = 'Helvetica';
            app.RootsTextAreaValueChanged.FontSize = 13;
        
        end

        % Value changed function: ErrorEditField
        function ErrorEditFieldValueChanged(app, event)
            value = app.ErrorEditFieldValueChanged.Value;
            app.ErrorEditFieldValueChanged.FontColor = '0.00,0.00,0.00';
            app.ErrorEditFieldValueChanged.BackgroundColor = 'none';
            app.ErrorEditFieldValueChanged.FontName = 'Helvetica';
            app.ErrorEditFieldValueChanged.FontSize = 13;
        
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Color = [0 0.4471 0.7412];
            app.UIFigure.Position = [100 100 567 428];
            app.UIFigure.Name = 'MATLAB App';

            % Create CalculateButton
            app.CalculateButton = uibutton(app.UIFigure, 'push');
            app.CalculateButton.ButtonPushedFcn = createCallbackFcn(app, @CalculateButtonPushed, true);
            app.CalculateButton.Position = [215 28 113 27];
            app.CalculateButton.Text = 'Calculate';

            % Create ChooseMethodDropDownLabel
            app.ChooseMethodDropDownLabel = uilabel(app.UIFigure);
            app.ChooseMethodDropDownLabel.HorizontalAlignment = 'right';
            app.ChooseMethodDropDownLabel.Position = [10 286 92 22];
            app.ChooseMethodDropDownLabel.Text = 'Choose Method';

            % Create ChooseMethodDropDown
            app.ChooseMethodDropDown = uidropdown(app.UIFigure);
            app.ChooseMethodDropDown.Items = {'', 'Jacobi', 'Gauss-Seidel'};
            app.ChooseMethodDropDown.Position = [117 286 100 22];
            app.ChooseMethodDropDown.Value = '';

            % Create EnteranAugmentedMatrixEditFieldLabel
            app.EnteranAugmentedMatrixEditFieldLabel = uilabel(app.UIFigure);
            app.EnteranAugmentedMatrixEditFieldLabel.HorizontalAlignment = 'right';
            app.EnteranAugmentedMatrixEditFieldLabel.Position = [44 335 152 22];
            app.EnteranAugmentedMatrixEditFieldLabel.Text = 'Enter an Augmented Matrix';

            % Create EnteranAugmentedMatrixEditField
            app.EnteranAugmentedMatrixEditField = uieditfield(app.UIFigure, 'text');
            app.EnteranAugmentedMatrixEditField.ValueChangedFcn = createCallbackFcn(app, @EnteranAugmentedMatrixEditFieldValueChanged, true);
            app.EnteranAugmentedMatrixEditField.HorizontalAlignment = 'center';
            app.EnteranAugmentedMatrixEditField.Position = [211 335 172 22];

            % Create StartingApproxmationEditFieldLabel
            app.StartingApproxmationEditFieldLabel = uilabel(app.UIFigure);
            app.StartingApproxmationEditFieldLabel.HorizontalAlignment = 'right';
            app.StartingApproxmationEditFieldLabel.Position = [256 236 126 22];
            app.StartingApproxmationEditFieldLabel.Text = 'Starting Approxmation';

            % Create StartingApproxmationEditField
            app.StartingApproxmationEditField = uieditfield(app.UIFigure, 'text');
            app.StartingApproxmationEditField.ValueChangedFcn = createCallbackFcn(app, @StartingApproxmationEditFieldValueChanged, true);
            app.StartingApproxmationEditField.HorizontalAlignment = 'right';
            app.StartingApproxmationEditField.Position = [397 236 101 22];

            % Create IsthematrixdiagonallydominantTextAreaLabel
            app.IsthematrixdiagonallydominantTextAreaLabel = uilabel(app.UIFigure);
            app.IsthematrixdiagonallydominantTextAreaLabel.HorizontalAlignment = 'center';
            app.IsthematrixdiagonallydominantTextAreaLabel.Position = [161 119 213 48];
            app.IsthematrixdiagonallydominantTextAreaLabel.Text = 'Is the matrix diagonally dominant?';

            % Create IsthematrixdiagonallydominantTextArea
            app.IsthematrixdiagonallydominantTextArea = uitextarea(app.UIFigure);
            app.IsthematrixdiagonallydominantTextArea.ValueChangedFcn = createCallbackFcn(app, @IsthematrixdiagonallydominantTextAreaValueChanged, true);
            app.IsthematrixdiagonallydominantTextArea.HorizontalAlignment = 'center';
            app.IsthematrixdiagonallydominantTextArea.Position = [226 102 92 18];

            % Create RootsTextAreaLabel
            app.RootsTextAreaLabel = uilabel(app.UIFigure);
            app.RootsTextAreaLabel.HorizontalAlignment = 'right';
            app.RootsTextAreaLabel.Position = [15 166 37 51];
            app.RootsTextAreaLabel.Text = 'Roots';

            % Create RootsTextArea
            app.RootsTextArea = uitextarea(app.UIFigure);
            app.RootsTextArea.ValueChangedFcn = createCallbackFcn(app, @RootsTextAreaValueChanged, true);
            app.RootsTextArea.Position = [67 166 150 53];

            % Create EnteranAugmentedMatrixEditFieldLabel_2
            app.EnteranAugmentedMatrixEditFieldLabel_2 = uilabel(app.UIFigure);
            app.EnteranAugmentedMatrixEditFieldLabel_2.BackgroundColor = [1 0 0];
            app.EnteranAugmentedMatrixEditFieldLabel_2.HorizontalAlignment = 'center';
            app.EnteranAugmentedMatrixEditFieldLabel_2.FontSize = 25;
            app.EnteranAugmentedMatrixEditFieldLabel_2.Position = [26 375 477 33];
            app.EnteranAugmentedMatrixEditFieldLabel_2.Text = 'Iterative Methods: Jacobi & Gauss-Seidel';

            % Create ChooseastoppingcriterionDropDownLabel
            app.ChooseastoppingcriterionDropDownLabel = uilabel(app.UIFigure);
            app.ChooseastoppingcriterionDropDownLabel.HorizontalAlignment = 'right';
            app.ChooseastoppingcriterionDropDownLabel.Position = [229 286 154 22];
            app.ChooseastoppingcriterionDropDownLabel.Text = 'Choose a stopping criterion';

            % Create ChooseastoppingcriterionDropDown
            app.ChooseastoppingcriterionDropDown = uidropdown(app.UIFigure);
            app.ChooseastoppingcriterionDropDown.Items = {'', 'MAE', 'RMSE'};
            app.ChooseastoppingcriterionDropDown.Position = [398 286 100 22];
            app.ChooseastoppingcriterionDropDown.Value = '';

            % Create ErrorEditFieldLabel
            app.ErrorEditFieldLabel = uilabel(app.UIFigure);
            app.ErrorEditFieldLabel.HorizontalAlignment = 'right';
            app.ErrorEditFieldLabel.Position = [318 181 31 22];
            app.ErrorEditFieldLabel.Text = 'Error';

            % Create ErrorEditField
            app.ErrorEditField = uieditfield(app.UIFigure, 'text');
            app.ErrorEditField.ValueChangedFcn = createCallbackFcn(app, @ErrorEditFieldValueChanged, true);
            app.ErrorEditField.Position = [364 181 134 22];

            % Create ThresholdValueEditFieldLabel
            app.ThresholdValueEditFieldLabel = uilabel(app.UIFigure);
            app.ThresholdValueEditFieldLabel.HorizontalAlignment = 'right';
            app.ThresholdValueEditFieldLabel.Position = [11 236 91 22];
            app.ThresholdValueEditFieldLabel.Text = 'Threshold Value';

            % Create ThresholdValueEditField
            app.ThresholdValueEditField = uieditfield(app.UIFigure, 'text');
            app.ThresholdValueEditField.ValueChangedFcn = createCallbackFcn(app, @ThresholdValueEditFieldValueChanged, true);
            app.ThresholdValueEditField.HorizontalAlignment = 'right';
            app.ThresholdValueEditField.Position = [117 236 100 22];

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = CMPT439_FinalProejct_exported

            % Create UIFigure and components
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
