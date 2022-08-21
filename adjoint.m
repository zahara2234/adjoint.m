%利用哈密顿-凯莱定理计算伴随矩阵
function B=adjoint(A)
try
    n=length(A);
    p1=poly(A);
    %求特征多项式
    p2=p1(1:end-1);
    B=(-1)^(n-1)*polyvalm(p2,A);
catch
    error("输入必须为方阵");
end