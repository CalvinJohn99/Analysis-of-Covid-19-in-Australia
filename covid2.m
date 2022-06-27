
clear all
close all

list_of_countries = {'United States', 'United Kingdom', 'Russia', 'Argentina', 'Turkey', 'Brazil', 'Vietnam', 'Italy', 'Spain', 'France',  'Germany', 'Iran', 'Indonesia', 'India', 'Japan', 'South Korea', 'Netherlands', 'Colombia', 'Poland', 'Australia'};
list_of_countries2 = {'United States', 'India', 'Brazil', 'France', 'Australia'};

T = readtable('owid-covid-data.csv');

sum_focus = 0;
total = 0;

figure( 'Color', [1 1 1], 'windowstyle', 'docked' );
hold on;

total_cases = T.total_cases;
location = T.location;
new_cases = T.new_cases;
locations = unique(T.location);

date = T.date;
dates = unique(T.date);
DateString = datestr( dates );
DateString = DateString(24:90:827,:);
% NewDateString = {'',''};
% NewDateString = cellstr(NewDateString);
% % date_index = 1:1:17;
% % DateString = DateString(50*date_index);
% for date_index=1:17
%     NewDateString(date_index) = DateString(50*date_index);
% end

new_deaths = T.new_deaths;
iso_code = T.iso_code;
% iso_codes = unique(T.iso_code);
% iso_codes = iso_codes(1:10);
iso_codes = {'',''};
last = 1;
for i = 1:20    
    country = list_of_countries(i);
    ind = strcmp(location, country);
    iso = iso_code(ind);
    iso = iso(1);
    iso_codes(last) = iso;
    last = last + 1;
end
    

for j=1:20
    country = list_of_countries(j);
    ind = strcmp(location, country);
    ccases = new_cases(ind);
    ctotal_cases = total_cases(ind);
    ccases(isnan(ccases))=0;
    ctotal_cases(isnan(ctotal_cases))=0;
    %covid_locations = strcmp(location,locations(j));
    %for k=1:827
        %each_date = find(date, dates(k));
        %ccases = new_cases(covid_locations);
        %cdcases = ccases(each_date);
    %end
    %sum_focus = sum_focus + max(ctotal_cases);
    sum_focus = sum_focus + max(ctotal_cases);
    mccases = mean(ccases);
    b = bar(j, mccases);
    b.FaceColor = '#0072BD';

end

for i=1:242
    country = locations(i);
    ind = strcmp(location, country);
    ccases = new_cases(ind);
    ctotal_cases = total_cases(ind);
    ccases(isnan(ccases))=0;
    ctotal_cases(isnan(ctotal_cases))=0;
    total = total + max(ctotal_cases);
end

covid_case_contribution = sum_focus./total;

% nice axis scale
axis([0 21 0 110000]);
box on;
% big labels
xlabel('Country', 'fontsize', 22);
% big labels
ylabel('Average Daily Cases', 'fontsize', 22);
% Just put ticks on actual months

set(gca, 'ytick', 0:20000:110000, 'FontSize', 18);
set( gca, 'xtick', 1:20);
% Label the months

set( gca,'xticklabel',iso_codes);
ax = gca;
ax.XAxis.FontSize = 22;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure( 'Color', [1 1 1], 'windowstyle', 'docked' );
hold on;
for j=1:20
    country = list_of_countries(j);
    ind = strcmp(location, country);
    cdeaths = new_deaths(ind);
    cdeaths(isnan(cdeaths))=0;
    mcdeaths = mean(cdeaths);
    b = bar(j, mcdeaths);
    b.FaceColor = '#0072BD';

end

% nice axis scale
axis([0 21 0 1500]);
box on;
% big labels
xlabel('Country', 'fontsize', 24);
% big labels
ylabel('Average Daily Deaths', 'fontsize', 24);
% Just put ticks on actual months

set(gca, 'ytick', 0:200:1500, 'FontSize', 18);
set( gca, 'xtick', 1:20);
% Label the months

set( gca,'xticklabel',iso_codes );
ax = gca;
ax.XAxis.FontSize = 22;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure( 'Color', [1 1 1], 'windowstyle', 'docked' );
hold on;

for j=1:5
    country = list_of_countries2(j);
    ind = strcmp(location, country);
    ccases = new_cases(ind);
    ccases(isnan(ccases))=0;
    h = plot(ccases);
    
end

h(1).Marker = '+';
h(end).Color = '#A2142F';
h(end).Marker = '*';
h(end).LineWidth = 1.1;

% nice axis scale
axis([0 810 0 1400000]);
box on;
% big labels
xlabel('Date', 'fontsize', 24);
% big labels
ylabel('New Cases', 'fontsize', 24);
% Just put ticks on actual months
hlegend = legend(list_of_countries2);
set(hlegend, 'Location', 'Best');
hlegend.FontSize = 16;
set(gca, 'ytick', 0:200000:1400000, 'FontSize', 18);
set( gca, 'xtick', 0:90:800);
% Label the months

set( gca,'xticklabel',DateString );
ax = gca;
ax.XAxis.FontSize = 16;

figure( 'Color', [1 1 1], 'windowstyle', 'docked' );
hold on;

for j=1:5
    country = list_of_countries2(j);
    ind = strcmp(location, country);
    ccases = new_cases(ind);
    ccases(isnan(ccases))=0;
    h = plot(log(ccases));
end

h(1).Marker = '+';
h(end).Color = '#A2142F';
h(end).Marker = '*';
h(end).LineWidth = 1.1;

% nice axis scale
axis([0 810 0 16]);
box on;
% big labels
xlabel('Date', 'fontsize', 24);
% big labels
ylabel('Logarithm of New Cases', 'fontsize', 24);
% Just put ticks on actual months
hlegend = legend(list_of_countries2);
set(hlegend, 'Location', 'Best');
hlegend.FontSize = 16;
set(gca, 'ytick', 0:2:15, 'FontSize', 18);
set( gca, 'xtick', 0:90:800);
% Label the months

set( gca,'xticklabel',DateString );
ax = gca;
ax.XAxis.FontSize = 16;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure( 'Color', [1 1 1], 'windowstyle', 'docked' );
hold on;

for j=1:5
    country = list_of_countries2(j);
    ind = strcmp(location, country);
    ccases = new_cases(ind);
    ccases(isnan(ccases))=0;
    h = area(ccases);
    
end
% 
% h(5).FaceColor = [0.2 0.6 0.5];
% h(5).EdgeColor = [0.63 0.08 0.18];
% h(5).LineWidth = 2;

newcolors = [0 0.4470 0.7410; 0.9290 0.6940 0.1250; 0.4660 0.6740 0.1880; 0.3010 0.7450 0.9330; 0 0 0];
colororder(newcolors);

% nice axis scale
axis([0 810 0 1400000]);
box on;
% big labels
xlabel('Date', 'fontsize', 24);
% big labels
ylabel('New Cases', 'fontsize', 24);
% Just put ticks on actual months
hlegend = legend(list_of_countries2);
hlegend.FontSize = 16;
set(hlegend, 'Location', 'Best');
set(gca, 'ytick', 0:200000:1400000, 'FontSize', 18);
set( gca, 'xtick', 0:90:800);
% Label the months

set( gca,'xticklabel',DateString );
ax = gca;
ax.XAxis.FontSize = 16;

figure( 'Color', [1 1 1], 'windowstyle', 'docked' );
hold on;

for j=1:5
    country = list_of_countries2(j);
    ind = strcmp(location, country);
    ccases = new_cases(ind);
    ccases(isnan(ccases))=0;
    h = area(log(ccases));
    %alpha(0.5);
end

newcolors = [0 0.4470 0.7410; 0.9290 0.6940 0.1250; 0.4660 0.6740 0.1880; 0.3010 0.7450 0.9330; 0 0 0];
colororder(newcolors);

% nice axis scale
axis([0 810 0 16]);
box on;
% big labels
xlabel('Date', 'fontsize', 24);
% big labels
ylabel('Logarithm of New Cases', 'fontsize', 24);
% Just put ticks on actual months
hlegend = legend(list_of_countries2);
set(hlegend, 'Location', 'northoutside');
hlegend.FontSize = 16;
set(gca, 'ytick', 0:2:15, 'FontSize', 18);
set( gca, 'xtick', 0:90:800);
% Label the months

set( gca,'xticklabel',DateString );
ax = gca;
ax.XAxis.FontSize = 16;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


figure( 'Color', [1 1 1], 'windowstyle', 'docked' );
hold on;


country = 'Australia';
ind = strcmp(location, country);
ccases = new_cases(ind);
ccases(isnan(ccases))=0;
% log_ccases = log(ccases);
bar(ccases);

x = linspace(1,length(ccases), length(ccases));
[P,S] = polyfit(x,ccases,3);
XX = linspace(x(1),x(end));
[YF,DELTA] = polyval(P,XX,S);
h = plot(XX,YF, 'k');
h.LineWidth = 2;
h.Color = [0.9290 0.6940 0.1250];

% nice axis scale
axis([0 810 0 200000]);
box on;
% big labels
title('Australias Daily Covid Cases')
xlabel('Date', 'fontsize', 24);
% big labels
ylabel('New Cases', 'fontsize', 24);
% Just put ticks on actual months
set(gca, 'ytick', 0:20000:200000, 'FontSize', 18);
set( gca, 'xtick', 0:90:800);
% Label the months

set( gca,'xticklabel',DateString );
ax = gca;
ax.XAxis.FontSize = 16;

figure( 'Color', [1 1 1], 'windowstyle', 'docked' );
hold on;
index = find(ccases==0);
ccases(index) = 1;
log_ccases = log(ccases);
bar(log_ccases);

xx = linspace(1,length(log_ccases), length(log_ccases));
[PP,SS] = polyfit(xx,log_ccases,1);
XXX = linspace(xx(1),xx(end));
[YFF,DELTAA] = polyval(PP,XXX,SS);
h = plot(XXX,YFF, 'k');
h.LineWidth = 2;
h.Color = [0.9290 0.6940 0.1250];

% nice axis scale
axis([0 810 0 13]);
box on;
% big labels
title('Logarithm of Australias Daily Covid Cases')
xlabel('Date', 'fontsize', 24);
% big labels
ylabel('Logarithm of New Cases', 'fontsize', 24);
% Just put ticks on actual months
set(gca, 'ytick', 0:2:13, 'FontSize', 18);
set( gca, 'xtick', 0:90:800);
% Label the months

set( gca,'xticklabel',DateString );
ax = gca;
ax.XAxis.FontSize = 16;