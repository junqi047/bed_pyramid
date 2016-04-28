function h=bed_pyramid(W,W_max) 

    %W = 20;
    %W_max = 150;

    n = 1;
    Wmat = W;

    while max(max(Wmat)) < W_max

        n = n+1;
        Wmat_new = ones(n,n)*W;

        for row = 1:n-1
            for col = 1:n-1
                Wmat_new(row,col) = Wmat_new(row,col) + Wmat(row,col)/4
                Wmat_new(row,col+1) = Wmat_new(row,col+1) + Wmat(row,col)/4
                Wmat_new(row+1,col) = Wmat_new(row+1,col) + Wmat(row,col)/4
                Wmat_new(row+1,col+1) = Wmat_new(row+1,col+1) + Wmat(row,col)/4
            end
        end

        Wmat = Wmat_new;

    end

     h = n-1;

    disp(Wmat_new)
    disp(h)


end