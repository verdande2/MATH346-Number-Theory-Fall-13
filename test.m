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

%BigPrime(3, 10)

%[q,r]=BigDiv(Int2BigInt(654321, 10), Int2BigInt(123, 10), 10)

%BigExp(Int2BigInt(34,10), Int2BigInt(46,10), Int2BigInt(47,10), 10)

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

% test case broken into pieces, ie. why does only the last bit translate
% over?!?
% m = [52    72    73    83     0    73    83     0    65     0    82    69    65    76    76    89     0    82    69    65    76    76    89     0    82    69    65    76    76    89     0    82    69    65    76    76    89     0    76    79    78    71     0    52    69    83    84     1     1     1];
% 
% N = [81    28    73    33    58    16    34    21    85    20    85    83    71    53    55    17];
% c = [54    36    34    87    22];
% d = [24    20    39    27    46    60     5    85    41    55    84     3    39     6    72     3];
% 
% pub = {N; c};
% priv = {N; d};
% 
% e = [];
% 
% ms = vec2mat(m, length(N));
% for r = 1:size(ms,1)
%     fprintf('Encrypting: ''%s'' \n', BigInt2String(ms(r,:)));
%     e = [e RSAEncrypt(ms(r,:), pub)]
% end
% 
% e
% 
% es = vec2mat(e, length(N));
% for r = 1:size(es,1)
%     fprintf('Decrypting ''%s'' \n', BigInt2String(es(r,:)));
%     m_decrpyted = BigInt2String(RSAEncrypt(es(r,:), pub))
% end

N = [2    83    51    10    21    71    86    69    69    25    14    50    31     6    60    78    19    14    76    22    69    46    81    25    67    69    46    75    86    10    78     6];
c = [5    55    89    23    45     2    79    80     9    54    12    26    74    63     3     8];
d = [30     8    85    17    14    21    89    29    21    49    27    51    58    26    53    65    87    30    44    41    17    70    43    34    93    22    86    24    87     2     9     1];
%RSAEncrypt(String
N = '2_Lupq''4JWux9-n4KiF5`-/#tU:`&-ezr*hS[lI@k`0-.:`oy)';
c = 'OU1>dT-DEV!Vx*e|Yd<K$DB;m';

randall_pub = {String2BigInt(N); String2BigInt(c)};

encrypted_to_send_to_randall = BigInt2String(RSAEncrypt(String2BigInt('answer here'), randall_pub))


profile off
%profile viewer