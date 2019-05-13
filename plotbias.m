function plotbias

%ID = 'L/R Bias - KP';
load('identityC1')
load('identityC2')
load('identityC3')

results = (leftplot + rightplot)/2;

controlplot = [0; 0; 0; 0.55; 1; 1; 1];

rightplot = [RRRRa RRRRb; RRRa RRRb; RRa RRb; ROa ROb; RLa RLb; RLLa RLLb; RLLLa RLLLb];
leftplot = [LRRRa LRRRb; LRRa LRRb; LRa LRb; LOa LOb; LLa LLb; LLLa LLLb; LLLLa LLLLb];

figure
subplot(2,2,[1 3]);
plot(results, '-o')
%plot(xcomba, '-o')
hold on
%plot(xcombb, '-s')
%plot(controlplot, '-d')

hold off

%one graph version
title(ID);
extraline = line([-0.1 7.5], [0.5 0.5], 'Color', [0.5 0.5 0.5], 'LineStyle', '--');
borderline1 = line([-0.1 7.5], [0 0], 'Color', [0.5 0.5 0.5], 'LineStyle', ':');
borderline2 = line([-0.1 7.5], [1 1], 'Color', [0.5 0.5 0.5], 'LineStyle', ':');
xlim([0.5 7.5]);
ylim([-0.2 1.2]);
xlabel('Target Face Orientation') 
ylabel('Response Bias') 
ax = gca;
ax.XTick = [1 2 3 4 5 6 7];
ax.YTick = [0 0.2 0.4 0.6 0.8 1.0];
ax.YTickLabel = ({'Right', '0.2', '0.4', '0.6', '0.8', 'Left'});
ax.XTickLabel = ({'RRR', 'RR', 'R', '0', 'L', 'LL', 'LLL'});
legend({'Condition 1','Condition 2', 'Control'}, 'location', 'southeast');

subplot(2,2,2)
plot(rightplot, '-o')
title('rightFlankers')
line([-0.1 7.5], [0.5 0.5], 'Color', [0.5 0.5 0.5], 'LineStyle', '--');
xlim([0.5 7.5]);
ylim([-0.2 1.2]);
ax = gca;
ax.XTick = [1 2 3 4 5 6 7];
ax.YTick = [0 0.2 0.4 0.6 0.8 1.0];
ax.XTickLabel = ({'RRR', 'RR', 'R', '0', 'L', 'LL', 'LLL'});

subplot(2,2,4)
plot(leftplot, '-o')
title('leftFlankers')
line([-0.1 7.5], [0.5 0.5], 'Color', [0.5 0.5 0.5], 'LineStyle', '--');
xlim([0.5 7.5]);
ylim([-0.2 1.2]);
ax = gca;
ax.XTick = [1 2 3 4 5 6 7];
ax.YTick = [0 0.2 0.4 0.6 0.8 1.0];
ax.XTickLabel = ({'RRR', 'RR', 'R', '0', 'L', 'LL', 'LLL'});