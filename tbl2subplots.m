function [meanValues, varianceValues] = tbl2subplots(tableData, columnNames, timeColumn, labelNames, titleName)
    % Input:
    %   - tableData: The input table containing the data.
    %   - columnNames: A cell array of column names to be plotted.
    %   - timeColumn: The name of the time column to use on the x-axis.
    %   - labelNames: A cell array of label names for the y-axes.
    %   - titleName: Title for the entire figure.

    % Extract the time data
    timestamp = tableData.(timeColumn);

    % Create a figure
    figure;

    % Determine the number of subplots
    numSubplots = length(columnNames);

    % Initialize arrays to store mean and variance values
    meanValues = zeros(numSubplots, 1);
    varianceValues = zeros(numSubplots, 1);

    % Loop through each specified column and create a subplot
    for i = 1:numSubplots
        subplot(numSubplots, 1, i);
        data = tableData.(columnNames{i});
        plot(timestamp, data);
        xlabel('Time');
        ylabel(labelNames{i});
        title(sprintf('%s vs. Time', labelNames{i}));
        
        % Calculate and display mean and variance
        meanValues(i) = mean(data);
        varianceValues(i) = var(data);
%         text(0.7, 0.9, sprintf('Mean: %.2f', meanValues(i)), 'Units', 'normalized');
%         text(0.7, 0.8, sprintf('Variance: %.2f', varianceValues(i)), 'Units', 'normalized');
        
        % Draw lines for mean and variance
        hold on;
        plot(timestamp, meanValues(i) * ones(size(timestamp)), 'r--', 'LineWidth', 1.5);
        plot(timestamp, (meanValues(i) + sqrt(varianceValues(i))) * ones(size(timestamp)), 'g--', 'LineWidth', 1.5);
        plot(timestamp, (meanValues(i) - sqrt(varianceValues(i))) * ones(size(timestamp)), 'g--', 'LineWidth', 1.5);
        hold off;
    end

    % Adjust subplot spacing
    sgtitle(titleName);

    % Adjust the figure size as needed
end