% Using fuzzy c-means for clustering data

[centers,U] = fcm(Y,5);


maxU = max(U);
index1 = find(U(1,:) == maxU);
index2 = find(U(2,:) == maxU);
index3 = find(U(3,:) == maxU);
index4 = find(U(4,:) == maxU);
index5 = find(U(5,:) == maxU);

% Plot

figure
scatter(Y(index1,5),Y(index1,6),'or','filled')
hold on
scatter(Y(index2,5),Y(index2,6),'og','filled')
scatter(Y(index3,5),Y(index3,6),'ob','filled')
scatter(Y(index4,5),Y(index4,6),'oy','filled')
scatter(Y(index5,5),Y(index5,6),'oc','filled')
legend('1','2','3','4','5')
axis equal;
title('Fuzzy Classes','FontSize',30)
xlabel('Petal Length','FontSize',20)
ylabel('Petal Width','FontSize',20)
plot(centers(1,5),centers(1,6),'xr','MarkerSize',15,'LineWidth',3)
plot(centers(2,5),centers(2,6),'xg','MarkerSize',15,'LineWidth',3)
plot(centers(3,5),centers(3,6),'xb','MarkerSize',15,'LineWidth',3)
plot(centers(4,5),centers(4,6),'xy','MarkerSize',15,'LineWidth',3)
plot(centers(5,5),centers(5,6),'xk','MarkerSize',15,'LineWidth',3)
hold off
grid on
set(gca,'TickDir','out'); 
set(gca,'LineWidth',2);
set(gca,'FontSize',12); 

print('-depsc2','FuzzyCMean.eps');