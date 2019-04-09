export TOOLCHAIN_ID="ENTER_YOUR_TOOLCHAIN_ID_HERE"
export API_KEY="ENTER_YOUR_IBM_CLOUD_API_KEY_HERE"

export buildRecordBranch="master"
export buildRecordRepo="github.com"
export buildRecordCommitId="aabbcc"
export buildRecordStatus=pass

export deployRecordEnv=PRODUCTION
export deployRecordStatus=pass

export IBM_CLOUD_DEVOPS_ENV="dev"

export MY_LOGICAL_APP_NAME_1="Weather App"
export MY_LOGICAL_APP_NAME_2="MERN Starter Kit"
export MY_LOGICAL_APP_NAME_3="Watson Conversation Chat Bot"
export MY_LOGICAL_APP_NAME_4="Java Microservice with Spring"
export MY_LOGICAL_APP_NAME_5="Go Web App with Gin"

export MY_BUILD_NUMBER_1="release:1"
export MY_BUILD_NUMBER_2="release:2"
export MY_BUILD_NUMBER_3="release:3"
export MY_BUILD_NUMBER_4="release:4"
export MY_BUILD_NUMBER_5="release:5"

# Install ibmcloud cli in shell

curl -fsSL https://clis.ng.bluemix.net/install/linux | sh

# Install DevOps Insights cli

ibmcloud plugin install doi

ibmcloud login --apikey $API_KEY --no-region

# Upload Build Records for each build.

ibmcloud doi publishbuildrecord --logicalappname "$MY_LOGICAL_APP_NAME_1" --buildnumber "$MY_BUILD_NUMBER_1" --branch=$buildRecordBranch --repositoryurl=$buildRecordRepo --commitid=$buildRecordCommitId --status=$buildRecordStatus
ibmcloud doi publishbuildrecord --logicalappname "$MY_LOGICAL_APP_NAME_2" --buildnumber "$MY_BUILD_NUMBER_2" --branch=$buildRecordBranch --repositoryurl=$buildRecordRepo --commitid=$buildRecordCommitId --status=$buildRecordStatus
ibmcloud doi publishbuildrecord --logicalappname "$MY_LOGICAL_APP_NAME_3" --buildnumber "$MY_BUILD_NUMBER_3" --branch=$buildRecordBranch --repositoryurl=$buildRecordRepo --commitid=$buildRecordCommitId --status=$buildRecordStatus
ibmcloud doi publishbuildrecord --logicalappname "$MY_LOGICAL_APP_NAME_4" --buildnumber "$MY_BUILD_NUMBER_4" --branch=$buildRecordBranch --repositoryurl=$buildRecordRepo --commitid=$buildRecordCommitId --status=$buildRecordStatus
ibmcloud doi publishbuildrecord --logicalappname "$MY_LOGICAL_APP_NAME_5" --buildnumber "$MY_BUILD_NUMBER_5" --branch=$buildRecordBranch --repositoryurl=$buildRecordRepo --commitid=$buildRecordCommitId --status=$buildRecordStatus

# Upload Custom Code Coverage Results. You must have created a custom data set in DevOps Insights with the tag custom-code-1 first

# ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_1" --buildnumber "$MY_BUILD_NUMBER_1" --filelocation=test-folder/code_coverage_cobertura.xml --type=custom-code-1 --env=$buildRecordEnv
#
# ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_2" --buildnumber "$MY_BUILD_NUMBER_2" --filelocation=test-folder/code_coverage_istanbul.json --type=custom-code-1 --env=$buildRecordEnv
#
# ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_3" --buildnumber "$MY_BUILD_NUMBER_3" --filelocation=test-folder/code_coverage_jacoco_with_groups.xml --type=custom-code-1 --env=$buildRecordEnv
#
# ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_4" --buildnumber "$MY_BUILD_NUMBER_4" --filelocation=test-folder/code_coverage_jacoco_without_groups.xml --type=custom-code-1 --env=$buildRecordEnv
#
# ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_5" --buildnumber "$MY_BUILD_NUMBER_5" --filelocation=test-folder/code_coverage_lcov.info --type=custom-code-1 --env=$buildRecordEnv

# Upload Custom Test Case Results. You must have created a custom data set in DevOps Insights with the tag custom-test-1 first

# ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_1" --buildnumber "$MY_BUILD_NUMBER_1" --filelocation=test-folder/unit_test_karmamocha.json --type=custom-test-1 --env=$buildRecordEnv
#
# ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_2" --buildnumber "$MY_BUILD_NUMBER_2" --filelocation=test-folder/unit_test_mocha.json --type=custom-test-1 --env=$buildRecordEnv
#
# ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_3" --buildnumber "$MY_BUILD_NUMBER_3" --filelocation=test-folder/unit_test_xunit.json --type=custom-test-1 --env=$buildRecordEnv
#
# ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_4" --buildnumber "$MY_BUILD_NUMBER_4" --filelocation=test-folder/unit_test_xunit.xml --type=custom-test-1 --env=$buildRecordEnv
#
# ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_5" --buildnumber "$MY_BUILD_NUMBER_5" --filelocation=test-folder/unit_test_xunit.json --type=custom-test-1 --env=$buildRecordEnv

# Upload Unit Tests

ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_1" --buildnumber "$MY_BUILD_NUMBER_1" --filelocation=test-folder/unit_test_karmamocha.json --type=unittest --env=$buildRecordEnv

ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_2" --buildnumber "$MY_BUILD_NUMBER_2" --filelocation=test-folder/unit_test_mocha.json --type=unittest --env=$buildRecordEnv

ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_3" --buildnumber "$MY_BUILD_NUMBER_3" --filelocation=test-folder/unit_test_xunit.json --type=unittest --env=$buildRecordEnv

ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_4" --buildnumber "$MY_BUILD_NUMBER_4" --filelocation=test-folder/unit_test_xunit.xml --type=unittest --env=$buildRecordEnv

ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_5" --buildnumber "$MY_BUILD_NUMBER_5" --filelocation=test-folder/unit_test_xunit.json --type=unittest --env=$buildRecordEnv

# Upload Code Coverage

ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_1" --buildnumber "$MY_BUILD_NUMBER_1" --filelocation=test-folder/code_coverage_cobertura.xml --type=code --env=$buildRecordEnv

ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_2" --buildnumber "$MY_BUILD_NUMBER_2" --filelocation=test-folder/code_coverage_istanbul.json --type=code --env=$buildRecordEnv

ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_3" --buildnumber "$MY_BUILD_NUMBER_3" --filelocation=test-folder/code_coverage_jacoco_with_groups.xml --type=code --env=$buildRecordEnv

ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_4" --buildnumber "$MY_BUILD_NUMBER_4" --filelocation=test-folder/code_coverage_jacoco_without_groups.xml --type=code --env=$buildRecordEnv

ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_5" --buildnumber "$MY_BUILD_NUMBER_5" --filelocation=test-folder/code_coverage_lcov.info --type=code --env=$buildRecordEnv

# Upload FVT Results

ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_1" --buildnumber "$MY_BUILD_NUMBER_1" --filelocation=test-folder/unit_test_karmamocha.json --type=fvt --env=$buildRecordEnv

ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_2" --buildnumber "$MY_BUILD_NUMBER_2" --filelocation=test-folder/unit_test_mocha.json --type=fvt --env=$buildRecordEnv

ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_3" --buildnumber "$MY_BUILD_NUMBER_3" --filelocation=test-folder/unit_test_xunit.json --type=fvt --env=$buildRecordEnv

ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_4" --buildnumber "$MY_BUILD_NUMBER_4" --filelocation=test-folder/unit_test_xunit.xml --type=fvt --env=$buildRecordEnv

ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_5" --buildnumber "$MY_BUILD_NUMBER_5" --filelocation=test-folder/unit_test_xunit.json --type=fvt --env=$buildRecordEnv

# Upload Security Scans

ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_1" --buildnumber "$MY_BUILD_NUMBER_1" --filelocation=test-folder/dynamic_scan.xml --type=dynamicsecurityscan --env=$buildRecordEnv

ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_1" --buildnumber "$MY_BUILD_NUMBER_1" --filelocation=test-folder/static_scan.xml --type=staticsecurityscan --env=$buildRecordEnv

# Upload Vulnerability Advisor

ibmcloud doi publishtestrecord --logicalappname "$MY_LOGICAL_APP_NAME_1" --buildnumber "$MY_BUILD_NUMBER_1" --filelocation=test-folder/vulnerability_advisor.json --type=vulnerabilityadvisor --env=$buildRecordEnv

# Upload Deployment Records

ibmcloud doi publishdeployrecord --logicalappname "$MY_LOGICAL_APP_NAME_1" --buildnumber "$MY_BUILD_NUMBER_1" --env=$deployRecordEnv --status=$deployRecordStatus
