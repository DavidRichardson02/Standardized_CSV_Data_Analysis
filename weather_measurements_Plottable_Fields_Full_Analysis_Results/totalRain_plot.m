% MATLAB script for plotting field: totalRain
hist_data = load('totalRain_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f11 = figure('Name', 'totalRain Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('totalRain Histogram');
xlabel('totalRain Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('totalRain_full_analysis.txt');
tokens_mean = regexp(A, 'Mean:\s*(\S+)', 'tokens');
meanVal = 0; if ~isempty(tokens_mean), meanVal = str2double(tokens_mean{1}{1}); end
tokens_std = regexp(A, 'Std Dev:\s*(\S+)', 'tokens');
stdVal = 1; if ~isempty(tokens_std), stdVal = str2double(tokens_std{1}{1}); end
x = linspace(min(bin_centers), max(bin_centers), 100);
y = (1/(stdVal*sqrt(2*pi))) * exp(-0.5*((x-meanVal)/stdVal).^2);
max_counts = max(counts);
scale_factor = max_counts / max(y);
plot(x, y*scale_factor, 'r-', 'LineWidth', 1.5);
legend('Histogram', 'Normal Fit');
