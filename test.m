profile on




asserteq(carry([0], 10), [0], 'zero test case failed')
%asserteq(prod(carry([3 7 0], 10) == [3 7]), 'removal of leading zeros test failed')
%assert(prod(carry([27 0 1], 10) == [7 2 1]), 'simple carry test failed')


asserteq(   carry([27], 10),        [7 2],          'Basic carry')
asserteq(   carry([10 9 99], 10),   [0 0 0 0 1],    'Multiple carry')
asserteq(   carry([-10 1], 10),     [0],            'Negative carry resulting in zero result')
asserteq(   carry([1 2 3 4 5], 10), [1 2 3 4 5],    'No carry needed for positive number')
asserteq(   carry([16], 16),        [0 1],          '16-base simple carry')
asserteq(   carry([0 3], 2),        [0 1 1],        '2-base simple carry')
asserteq(   carry([-8 -10 0 1], 10),[2 9 8],        'Negative coefficients, resulting in positive number')
%asserteq(   carry([], 10)

asserteq(   carry([7 5 -2], 10),    [-3 -4 -1],     'Negative coefficients, resulting in negative number')
asserteq(   carry([-10], 10),       [0 -1],         'Negative carry resulting in negative result')
asserteq(   carry([-1 -2 -3 -4 -5], 10),[-1 -2 -3 -4 -5],   'No carry needed for negative number')



%t = [-1 -2 -3 8];
%carry(t, 10)

%n = [9 8 0 9 7];
%d = [1 3 2];

n = [3 7 2 5 6 1];
d = [6 1 3];


%n = [1 2 3 4];
%d = [0 3 3];
n = [5 6 4 2];
d = [1 1 2];
%4321/330 = 13 r31
BigComp(n,d,10)
BigDiv2(n,d,10)



%BigExp(n, d)
%BigAdd(z, z, 10)
%carry([27], 10) 
%carry([10 9 99], 10)
%carry([1 2 3], 10)
%carry([7 5 -2], 10)
%carry([-10 1], 10)
%carry([-10], 10)
%carry([1 2 3 0 0 0 0 0], 10)
%carry([987654321098765432109876543210987654321098765432109876543210987654321098765432109876543210987654321],10)
%carry([25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25], 10)
%BigComp([1 9 3], [3 1 4], 10) % -1
%BigComp([1 2 3], [1 2 3], 10) % 0
%BigComp([5 5 9], [1 2 9], 10) % 1
%t = [25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25];
%BigPrint(t);

profile off
%profile viewer