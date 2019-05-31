git init
git config user.name "reallfx"
git config user.email "reallfx@reallfx.com"
#  项目的配置优先于全局配置
git config --global user.name "reallfx"
git config --global user.email "reallfx@outlook.com"

# 不建议直接提交文件夹,防止别的文件被提交
# 放到暂存区
git add src
git add src/Hello.java

# 把暂存区的全部提交
git commit -m "update 01"

# 查看状态
git status

# 查看日志
# 版本ID,yo
git log
git log --pretty=oneline


# 版本退回
# 以下没有反应,因为HEAD就是当前版本
git reset --hard HEAD
# 退回到前一个版本
git reset --hard HEAD^
# 退回到10个版本
git reset --hard HEAD~10

# 回退后,git log 就不显示了
git log

# 得用git reflog 本地所有的操作
# 能显示所有的版本号
git reflog

# 直接指定版本号回退
# 从本地库里取回所有的文件,覆盖暂存区,工作区
git reset --hard a23ded

# 还原某个文件,没提交的全抹掉
# 从暂存区取文件,覆盖工作区
git checkout -- src/Hello.java

# 删除一个已经提交的文件
# 已经commit的无法彻底删除,可以通过版本回退找到
# 提交一个已经删除的文件,可以在最新的版本中消除.但历史版本还有

# 合并冲突

# 先编辑,再add,再commit