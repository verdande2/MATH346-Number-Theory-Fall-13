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

%n = [3 7 2 5 6 1];
%d = [6 1 3];
%165273/316 = 523 r5
%[q, r] = BigDiv(n,d,10)


%n = [1 2 3 4];
%d = [0 3 3];
%4321/330 = 13 r31
                                

%n = [5 6 4 2];
%d = [1 1 2];
%2465/211 = 11 r144

%n = Int2BigInt(1027, 10);
%d = Int2BigInt(2, 10);
%1027/2 = 513 r1
%BigComp(n,d,10)
%[q, r]=BigDiv(n,d,10)

%[k, l] = BigEuclid([2 6 7], [8 1 6], 10)
%[k, l] = BigEuclid([1 1 1], [9 6], 10)
% for i = 1 : 10^6
%     n = BigAdd(n, 1);
%     BigGCD(BigAdd(n,-1, 10), n, 10)
% end
%BigGCD([2 6 7], [8 1 6], 10)
%BigGCD([1 1 1], [9 6], 10)

%BigPrime(2, 10)

[q,r]=BigDiv(Int2BigInt(654321, 10), Int2BigInt(123, 10), 10)

%BigExp([7 6], [8 7], [9 7], 10)
%BigMod(Int2BigInt(123456789,10), Int2BigInt(123456, 10), 10)

% a = [0 3];
% p = [1 4];
% p1 = BigAdd(p,-1,10);
% 
% BigExp(a, p1, p, 10)
%asserteq(BigExp(a, BigAdd(p,-1,10), p, 10), 1, 'big exp fails!')

%[q,r]=BigDiv(2,2,10)

%BigMult(Int2BigInt(123,10), Int2BigInt(123, 10), 10) % = [9 2 1 5 1]

%BigMult(Int2BigInt(123,10), Int2BigInt(56, 10), 10) % = 6888, or [8 8 8 6]

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