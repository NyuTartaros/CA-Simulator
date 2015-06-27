%initial
timelimit=150;
maplimit=100;
ca=ca_initial(maplimit);

%main
for i=1:timelimit
    ca=ca_iterate(ca,maplimit);
    mesh(ca);
end
