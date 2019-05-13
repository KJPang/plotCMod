function plotstuff

%ID = 'K';
load('identityC1')
load('identityC2')
load('identityC3')

colors = [0 0 0.7; 0.7 0 0; 0 0 0; 0.7 0 0]; % b,r,k,g
axes('ColorOrder',colors)

init_params = [0 1 0];
x = [-5 -3 -1 0 1 3 5];

%results = [S9a; S6a; S3a; SOa; O3a; O6a; O9a];
%results = [S6a S6b; S3a S3b; SOa SOb; O3a O3b; O6a O6b];
results = [S6a S6b S6c; S3a S3b S3c; SOa SOb SOc; O3a O3b O3c; O6a O6b O6c];

rightplot = [RRRRa; RRRa; RRa; ROa; RLa; RLLa; RLLLa];
leftplot = [LRRRa; LRRa; LRa; LOa; LLa; LLLa; LLLLa];

%figure
% subplot(2,2,[1 3]);
% plot(results, '-o')

%one graph version
% title(ID);
% extraline = line([-0.1 7.5], [0.5 0.5], 'Color', [0.5 0.5 0.5], 'LineStyle', '--');
% borderline1 = line([-0.1 7.5], [0 0], 'Color', [0.5 0.5 0.5], 'LineStyle', ':');
% borderline2 = line([-0.1 7.5], [1 1], 'Color', [0.5 0.5 0.5], 'LineStyle', ':');
% xlim([0.5 7.5]);
% ylim([-0.2 1.2]);
% ax = gca;
% ax.XTick = [1 2 3 4 5 6 7];
% ax.YTick = [0 0.2 0.4 0.6 0.8 1.0];
% ax.XTickLabel = ({'SSS', 'SS', 'S', '0', 'O', 'OO', 'OOO'});
% legend({'1','2','3'}, 'location', 'southeast');

subplot(1,2,2)

params = nlinfit(x,rot90(rightplot(:,1)),'logistic3',init_params)
plot(min(x):.1:max(x),logistic3(params,min(x):.1:max(x)),'b-')
hold on
params = nlinfit(x,rot90(rightplot(:,2)),'logistic3',init_params)
plot(min(x):.1:max(x),logistic3(params,min(x):.1:max(x)),'m-')
params = nlinfit(x,rot90(rightplot(:,3)),'logistic3',init_params)
plot(min(x):.1:max(x),logistic3(params,min(x):.1:max(x)),'r-')
plot(x,rightplot, ':o')
hold off
title('rightFlankers')
line([-10 10], [0.5 0.5], 'Color', [0.5 0.5 0.5], 'LineStyle', '--');
line([0 0], [-10 10], 'Color', [0.5 0.5 0.5], 'LineStyle', '--');
xlim([-5 5]);
ylim([-0.2 1.2]);
ax = gca;
%ax.XTick = [1 2 3 4 5 6 7];
ax.YTick = [0 0.2 0.4 0.6 0.8 1.0];
legend({'15c','xc','Controlc'}, 'location', 'southeast');

subplot(1,2,1)

params = nlinfit(x,rot90(leftplot(:,1)),'logistic3',init_params)
plot(min(x):.1:max(x),logistic3(params,min(x):.1:max(x)), 'b-')
hold on
params = nlinfit(x,rot90(leftplot(:,2)),'logistic3',init_params)
plot(min(x):.1:max(x),logistic3(params,min(x):.1:max(x)), 'm-')
params = nlinfit(x,rot90(leftplot(:,3)),'logistic3',init_params)
plot(min(x):.1:max(x),logistic3(params,min(x):.1:max(x)), 'r-')
plot(x,leftplot, ':o')
hold off
title('leftFlankers')
line([-10 10], [0.5 0.5], 'Color', [0.5 0.5 0.5], 'LineStyle', '--');
line([0 0], [-10 10], 'Color', [0.5 0.5 0.5], 'LineStyle', '--');
xlim([-5 5]);
ylim([-0.2 1.2]);
ax = gca;
%ax.XTick = [1 2 3 4 5 6 7];
ax.YTick = [0 0.2 0.4 0.6 0.8 1.0];
legend({'15c','xc','Controlc'}, 'location', 'southeast');