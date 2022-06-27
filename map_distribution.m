clear all
close all

T = readtable('time_series_covid19_confirmed_global.csv');
%gb = geobubble(T, 'Var3', 'Var4');
latitude = T.Var3;
longitude = T.Var4;

daily_cases = T(2:end, 5:end);

writetable(daily_cases, 'daily_cases.csv');

T2 = readtable('daily_cases.csv');

T2.Sum = sum(T2{:,:}, 2);

T3.Latitude = latitude(2:end,:);
T3.Longitude = longitude(2:end, :);
T3.TotalCases = T2.Var817;
T3 = struct2table(T3);
writetable(T3, 'total_cases.csv');
gb = geobubble(T3, 'Latitude', 'Longitude',...
    'SizeVariable','TotalCases');
gb.SourceTable.Severity = discretize(T3.TotalCases, [0 (8.05*10000000)/500 (8.05*10000000)/50 (8.05*10000000)+100000000],....
    'categorical', {'Low (<161k Cases)', 'Medium (<1.61m Cases)', 'High (>1.61m Cases)'});
gb.ColorVariable = 'Severity';
gb.BubbleColorList = autumn(3);
neworder = {'High (>1.61m Cases)', 'Medium (<1.61m Cases)', 'Low (<161k Cases)'};
gb.SourceTable.Severity = reordercats(gb.SourceTable.Severity, neworder);
title = "Covid-19 Total Confirmed Cases";
gb.SizeLegendTitle = "Total Confirmed Cases";
gb.ColorLegendTitle = 'Severity';
gb.Basemap = 'colorterrain';
gb.FontSize = 18;
gca.FontSize = 16;