%% Integrate a function
syms x
f = x^2
e = int(f)

%% Plot the results
figure(1)
ezplot(e)