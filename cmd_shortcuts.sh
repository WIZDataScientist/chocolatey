cd /c/tools/cmder/config

# paths
echo 'alias cmder_path="cd /c/tools/cmder/config"' >> user_profile.sh
echo 'alias dropbox="cd /c/Dropbox\ \(Personal\)"' >> user_profile.sh
echo 'alias cmder_config="nano /c/tools/cmder/config/user_profile.sh"' >> user_profile.sh
echo 'alias cmder_config2="nano /c/Dropbox\ \(Personal\)/cmd_shortcuts.sh"' >> user_profile.sh

echo 'alias gowork="cd /c/local_repos"' >> user_profile.sh
echo 'alias relink="cd /c/local_repos/Schultz.CvTinder"' >> user_profile.sh
echo 'alias relink_notebooks="cd /c/local_repos/Schultz.CvTinder/notebooks"' >> user_profile.sh
echo 'alias relink_handbook="cd /c/local_repos/Schultz.CvTinder/handbook"' >> user_profile.sh
echo 'alias relink_source="cd /c/local_repos/Schultz.CvTinder/source"' >> user_profile.sh

# utils
echo 'alias google=/c/tools/cmder/config/google.sh' >> user_profile.sh
echo 'alias mkdsdir=/c/tools/cmder/config/project_dir.sh' >> user_profile.sh
echo 'alias firefox="/c/Program\ Files/Mozilla\ Firefox/firefox.exe"'>> user_profile.sh

echo 'alias relink_aut="bash /c/local_repos/Schultz.CvTinder/handbook/authenticateaws.sh"' >> user_profile.sh
echo 'alias relink_localhost="firefox localhost:2525"' >> user_profile.sh
echo 'alias relink_assembly="sbt recommenderEtl/assembly"' >> user_profile.sh
echo 'alias relink_jar="cd /c/local_repos/Schultz.CvTinder/source/recommender-etl/target/scala-2.11/"' >> user_profile.sh
echo 'alias relink_aws_listdev="aws s3 ls s3://schultz-data/dev/outputData/"' >> user_profile.sh
echo 'alias relink_test="sbt -mem 4096 test"' >> user_profile.sh

echo 'relink_zeppelin=docker run -p 2525:8080 -p 4040:4040 --rm -v /c/local_repos/Schultz.CvTinder/notebooks:/zeppelin/notebook -e ZEPPELIN_NOTEBOOK_DIR=/zeppelin/notebook --name zeppelin apache/zeppelin:0.8.1' >> user_aliases.cmd
echo 'relink_oldzeppelin=docker run -p 8080:8080 --rm -v /c/local_repos/Schultz.CvTinder/notebooks:/zeppelin/notebook -e ZEPPELIN_NOTEBOOK_DIR=/zeppelin/notebook --name zeppelin apache/zeppelin:0.7.2' >> user_aliases.cmd


#rm if exists
if test -f google.sh; then
    rm google.sh	
fi

if test -f project_dir.sh; then
    rm project_dir.sh
fi

# create google script
echo '#!/bin/bash'>> google.sh
echo 'echo "Searching for : $@"'>> google.sh
echo 'for term in $@ ; do'>> google.sh
echo '    echo "$term"'>> google.sh
echo '    search="$search%20$term"'>> google.sh
echo 'done'>> google.sh
echo '    open "http://www.google.com/search?q=$search"'>> google.sh

# create project script
echo 'mkdir source test model data notebooks docs' >> project_dir.sh
echo 'mkdir -p source/{utils,preparation,processing,modelling}' >> project_dir.sh
echo 'mkdir -p data/{raw,processed}' >> project_dir.sh
echo 'mkdir -p notebooks/{eda,poc,modelling,evaluation}' >> project_dir.sh

# message
echo 'script has been run'



