% NEWTON RAPHSON METHOD - NON-LINEAR FEM PROBLEM
function NewtonRaphsonMethod

i = 1;
u0 = 25;
N = 100;
error = 0.0001;

syms 'x'
f(x) = (9*x) - (0.01*x.^3);
df = diff(f);

while i<=N
    u = u0 - (f(u0)/df(u0));
    
    if (abs(u - u0)/abs(u)) < error
        fprintf('Solution is %f \n', double(u))
        return
    end
    
    i = i+1;
    u0 = u;
end
fprintf('No Solution')
end