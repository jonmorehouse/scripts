# call git counter
../scripts/git_counter.sh

# update jslib
if [ -f Cakefile ];then
  cake build
fi

# call any other scripts ...

