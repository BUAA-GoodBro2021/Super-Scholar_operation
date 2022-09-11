# 生成密钥
ssh-keygen
index=0
for i in $*
do
    let index++
    if [ $(($index%2)) -eq 0 ]
    then 
        ssh-copy-id "rancher@$i"
    fi
done
