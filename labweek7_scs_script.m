t = -3 %% insert the  the shift
ts1 = [0 0];                                         % values for the Y-axis (vertical line)
ts2 = [-1 2.5];                                      % values for the Y-axis (vertical line)
ts3 = [(-5-(t)) (5-(t))];                            % values for the X-axis (Horizontal line)
ts4 = [0 0];                                         % values for the X-axis (Horizontal line)
if t < 0 ;                                           % if statement condition if "t" is less than zero (negative)
    subplot(2,2,2);                                  % creates a subplot with 2 rows and 2 columns and this is at the second column and first row
    
    plot((x1-(t)),y1,(x2-(t)),y2,(x3-(t)),y3,'LineWidth',4);   % plots the data that has been time shifted according to the desired value
    grid on;                                                    % turns the grid lines on
    xlabel('time');                                     % sets the X-axis label for the graph
    ylabel('f(t)');                                     % sets the Y-axis label for the graph
    title('Time-Shifted Continuous-Time Signal');       % sets the title for the graph
    
    hold on;
    plot(ts1,ts2,ts3,ts4,'LineWidth',1);             % plots the cross in cartesian plane
    hold off;                                        % takes the hold off
else                                                 % else statement condition if "t" is greater than zero (positive)
    subplot(2,2,2);                                  % creates a subplot with 2 rows and 2 columns and this is at the second column and first row
    plot ((x1-t),y1,(x2-t),y2,(x3-t),y3,'LineWidth', 4);        % plots the data that has been time-shifted according to the desired value
    grid on;                                         % turns the grid lines on
    xlabel('time');                                  % sets the X-axis label for the graph
    ylabel('f(t)');                                  % sets the Y-axis label for the graph
    title('Time-Shifted Continuous-Time Signal');    % sets the title for the graph
    hold on;
    plot(ts1,ts2,ts3,ts4,'LineWidth',1);             % plots the cross in cartesian plane
    hold off;                                        % takes the hold off
end 
