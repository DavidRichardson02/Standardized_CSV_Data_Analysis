% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f17 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f18 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f19 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f20 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f21 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f22 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f23 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f24 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f25 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f26 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f27 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f28 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f29 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f30 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f31 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f32 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f33 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f34 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f35 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f36 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f37 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f38 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f39 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f40 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f41 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f42 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f43 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f44 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f45 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f46 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f47 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f48 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f49 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f50 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f51 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f52 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f53 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f54 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f55 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f56 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f57 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f58 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f59 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f60 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f61 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f62 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f63 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f64 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f65 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f66 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
% MATLAB script for plotting field: (null)
hist_data = load('(null)_histogram.txt');
bin_centers = (hist_data(:,1) + hist_data(:,2))/2;
counts = hist_data(:,3);
f67 = figure('Name', '(null) Histogram');
bar(bin_centers, counts, 1.0, 'FaceColor',[0.7 0.7 0.7]);
title('(null) Histogram');
xlabel('(null) Values');
ylabel('Frequency');
grid on;
hold on;
% Load analysis to overlay normal distribution
A = fileread('(null)_full_analysis.txt');
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
