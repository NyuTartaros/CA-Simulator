function ca_=ca_iterate(ca,maplimit)
temp=zeros(maplimit);
for i=2:maplimit-1
    temp(1,i)=ca_rand( ca(1,i), [ca(1,i-1) ca(2,i-1) ca(2,i) ca(2,i+1) ca(1,i+1)]);
    temp(maplimit,i)=ca_rand( ca(maplimit,i), [ca(maplimit,i-1) ca(maplimit-1,i-1) ca(maplimit-1,i) ca(maplimit-1,i+1) ca(maplimit,i+1)]);
    temp(i,1)=ca_rand( ca(i,1), [ ca(i-1,1) ca(i-1,2) ca(i,2) ca(i+1,2) ca(i+1,1)]);
    temp(i,maplimit)=ca_rand( ca(i,maplimit), [ca(i-1,maplimit) ca(i-1, maplimit-1) ca(i, maplimit-1) ca(i+1,maplmit-1) ca(i+1,maplimit)]);
end
temp(1,1)=ca_rand( ca(1,1), [ca(1,2) ca(2,1) ca(2,2)]);
temp(1,maplimit)=ca_rand( ca(1,maplimit), [ca(1,maplimit-1) ca(2,maplimit) ca(2,maplimit-1)]);
temp(maplimit,1)=ca_rand( ca(maplimit,1), [ca(maplimit-1,1) ca(maplimit,2) ca(maplimit-1,2]);
temp(maplimit,maplimit)=ca_rand( ca(maplimit,maplimit), [ca(maplimit-1,maplimit) ca(maplimit,maplimit-1) ca(maplimit-1,maplimit-1)]);
for i=2:maplimit-1
    for j=2:maplimit-1
        temp(i,j)=ca_rand( ca(i,j), [ca(i-1,j-1) ca(i-1,j) ca(i-1,j+1) ca(i,j+1) ca(i+1,j+1) ca(i+1,j) ca(i+1,j-1) ca(i,j-1) ]);
    end
end
ca_=temp;
end