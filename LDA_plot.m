% LDA on data for dimension reduction

[Y, W, lambda] = LDA(Xo, L);


% Plot

figure;

D = size(Xo,2);
for d=1:D
    % Original Data
    subplot(D,2,2*d-1);
    plot(Xo(:,d));
    ylabel(['x_' num2str(d)]);
    if d==D
        xlabel('Sample Index');
    end
    if d==1
        title('Original Data');
    end
    grid on;
    
    % Transformed Data
    subplot(D,2,2*d);
    plot(Y(:,d));
    ylabel(['y_' num2str(d)]);
    if d==D
        xlabel('Sample Index');
    end
    if d==1
        title('LDA Output');
    end
    grid on;
    
end