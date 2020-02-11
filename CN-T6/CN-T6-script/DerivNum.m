function [dy] = DerivNum(X,Y,met)
    m=length(X)-1;
    switch met
        case 'dfp'
            for i=2:m
                dy(i)=(Y(i+1)-Y(i))/(X(i+1)-X(i));
            end
        case 'dfr'
            for i=2:m
                dy(i)=(Y(i)-Y(i-1))/(X(i)-X(i-1))
            end
        case 'dfc'
            for i=2:m
                dy(i)=(Y(i+1)-Y(i-1))/(X(i+1)-X(i-1));
            end
    end
end

