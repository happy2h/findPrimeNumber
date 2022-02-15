primeMap = containers.Map('KeyType','double','ValueType','double');
for i = 2 : 10
    primeMap(i) = 1;
    for j = 2:i-1
        if mod(i,j) == 0
            str = sprintf('%d is equals %d * %d',i,j,floor(i/j));
            disp(str)
            primeMap.remove(i);
            break
        end
    end
end

%% 展示素数键值
keys(primeMap)
%% 画图
resPlt = cell2mat(keys(primeMap));
plot(resPlt)
