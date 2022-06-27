clear all
close all

T = readtable('covid_australia_sources.csv');

x = T(2:end, 1);
y = T(2:end, 2:5);
y = table2array(y);
x = table2array(x);

figure( 'Color', [1 1 1], 'windowstyle', 'docked' );



b = barh(y,'stacked', 'FaceColor','flat');
b(1).CData = [0 0.4470 0.7410];  % Change color to first level
b(2).CData = [0.9290 0.6940 0.1250];
b(3).CData = [0.4660 0.6740 0.1880];
b(4).CData = [0.3010 0.7450 0.9330];

box on;
axis([0 2000000 0 9]);
set( gca,'yticklabel',x );
set(gca, 'xticklabel', 0:200000:2000000);
l = legend({'Overseas', 'Locally Aquired - Contact Of Confirmed Case', 'Locally Acquired - Unknown Contact', 'Under Investigation'});
xlabel('Total Confirmed Cases');
ylabel('Australian States', 'FontSize', 22);
ax = gca;
ax.YAxis.FontSize = 22;
ax.XAxis.FontSize = 16;
ax.XAxis.Label.FontSize = 22;
l.FontSize = 18;
set(l, 'Location', 'east');

figure( 'Color', [1 1 1], 'windowstyle', 'docked' );
hold on;

australia = T(1, 2:5);
australia = table2array(australia);
p = pie(australia);
colormap([0 0.4470 0.7410;      %// red
          0.9290 0.6940 0.1250;      %// green
          0.4660 0.6740 0.1880;      %// blue
          0.3010 0.7450 0.9330]) 

hlegend = legend({'Overseas', 'Locally Aquired - Contact Of Confirmed Case', 'Locally Acquired - Unknown Contact', 'Under Investigation'});
axis equal
axis off
set(hlegend, 'Location', 'northeastoutside');
hlegend.FontSize = 18;
t = title('Australia (% of all confirmed cases)', 'Position', [0.1, -1.2, 0]);
t.FontSize = 22;
ax = gca;
ax.FontSize = 18;
