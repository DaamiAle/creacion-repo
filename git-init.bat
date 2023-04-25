set /p dir_repo=<directorio_repo_local.txt
set /p origin=<destino_repo_ssh.txt
set /p title_readme=<nombre_repo.txt
set /p temp_gitignore=<plantilla_gitignore.txt
cd /d "%dir_repo%"
git init
git branch -M main
git remote add origin %origin%
echo %title_readme% > README.md
curl --insecure -o .gitignore %temp_gitignore%
git add .
git commit -m "First Commit - Automatic Commit"
git push -u origin main
cmd /k