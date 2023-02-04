%Preprocessing data

% Filling the missing data if it existes

if  anymissing(X) > 0 
    X = fillmissing(X,'previous');
end

% Removing outliers

Xo = rmoutliers(X,'mean');

% Extracting labels from Features

T = Xo(:,11);
L = vec2ind(T);
Xo(:,11) = [];

% Data Normalization

Xo = normalize(Xo, 'scale');
