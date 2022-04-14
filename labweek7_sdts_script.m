tt = -3  ,tts1 = [0 0];                                         % values for the Y-axis (vertical line)
tts2 = [-1 2.5];                                      % values for the Y-axis (vertical line)
tts3 = [(-5-(t)) (5-(t))];                            % values for the X-axis (Horizontal line)
tts4 = [0 0];                                         % values for the X-axis (Horizontal line)
if tt < 0 ;                                           % if statement condition if "t" is less than zero (negative)
    subplot(2,2,2);                                  % creates a subplot with 2 rows and 2 columns and this is at the second column and first row
    
    stem(xx1-(tt),yy1,'filled');
    hold on;
    stem(xx2-(tt),yy2,'filled');
    hold on;
    stem(xx3-(tt),yy3,'filled');   % plots the data that has been time shifted according to the desired value
    grid on;                                                    % turns the grid lines on
    xlabel('n');                                     % sets the X-axis label for the graph
    ylabel('x(n)');                                     % sets the Y-axis label for the graph
    title('Time-Shifted Discrete-Time Signal');       % sets the title for the graph
    
    hold on;
    plot(tts1,tts2,tts3,tts4,'LineWidth',1);             % plots the cross in cartesian plane
    hold off;                                        % takes the hold off
else                                                 % else statement condition if "t" is greater than zero (positive)
    subplot(2,2,2);                                  % creates a subplot with 2 rows and 2 columns and this is at the second column and first row
    stem ((xx1-tt),yy1,'filled')
    hold on;
    stem((xx2-tt),yy2,'filled');
    hold on;
    stem((xx3-tt),yy3,'filled');        % plots the data that has been time-shifted according to the desired value
    grid on;                                         % turns the grid lines on
    xlabel('n');                                  % sets the X-axis label for the graph
    ylabel('x(n)');                                  % sets the Y-axis label for the graph
    title('Time-Shifted Discrete-Time Signal');    % sets the title for the graph
    hold on;
    plot(tts1,tts2,tts3,tts4,'LineWidth',1);             % plots the cross in cartesian plane
    hold off;                                        % takes the hold off
end                                                  % end of if function


