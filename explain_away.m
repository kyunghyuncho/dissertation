
addpath('~/work/Algorithms/rbm/');

[w1, w2] = meshgrid(-5:0.1:5, -5:0.1:5);

h2_h1 = sigmoid(w1 + w2) ./ (sigmoid(w1) + sigmoid(w1 + w2));
h2_only = (sigmoid(w2) + sigmoid(w1 + w2)) ./ (0.5 + sigmoid(w1) + sigmoid(w2) + sigmoid(w1 + w2));

figure; 
contourf(w1, w2, log(h2_h1 ./ h2_only), 100);
colorbar;
xlabel('w1');
ylabel('w2');

h_xlabel = get(gca,'XLabel');
set(h_xlabel,'FontSize',20);
h_ylabel = get(gca,'YLabel');
set(h_ylabel,'FontSize',20);
set(gca, 'FontSize', 15);







