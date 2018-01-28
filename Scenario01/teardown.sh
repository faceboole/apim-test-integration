#! /bin/bash

# Copyright (c) 2017, WSO2 Inc. (http://wso2.com) All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#these params need to be taken out
#tomcat properties
tomcatHost=$tomcatHost
tomcatPort=8080
tomcatUsername=scriptuser
tomcatPassword=scriptuser
appName="sample-data-backend"

cd $scriptPath/resources/configs/post

#reset user-mgt.xml and jndi.properties
cp user-mgt.xml $APIM_HOME/repository/conf
cp jndi.properties $APIM_HOME/repository/conf

#undeploy webapp from tomcat
curl http://$tomcatUsername:$tomcatPassword@$tomcatHost:$tomcatPort/manager/text/undeploy?path=/$appName


