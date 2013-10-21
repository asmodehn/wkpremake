function get_jenkins_env()
	local jenkins_env = {}
	jenkins_env["BUILD_NUMBER"] = os.getenv("BUILD_NUMBER")
	jenkins_env["BUILD_ID"] = os.getenv("BUILD_ID")
	jenkins_env["BUILD_URL"] = os.getenv("BUILD_URL")
	jenkins_env["NODE_NAME"] = os.getenv("NODE_NAME")
	jenkins_env["JOB_NAME"] = os.getenv("JOB_NAME")
	jenkins_env["BUILD_TAG"] = os.getenv("BUILD_TAG")
	jenkins_env["JENKINS_URL"] = os.getenv("JENKINS_URL")
	jenkins_env["EXECUTOR_NUMBER"] = os.getenv("EXECUTOR_NUMBER")
	jenkins_env["JAVA_HOME"] = os.getenv("JAVA_HOME")
	jenkins_env["WORKSPACE"] = os.getenv("WORKSPACE")
	jenkins_env["SVN_REVISION"] = os.getenv("SVN_REVISION")
	jenkins_env["CVS_BRANCH"] = os.getenv("CVS_BRANCH")
	jenkins_env["GIT_COMMIT"] = os.getenv("GIT_COMMIT")
	jenkins_env["GIT_BRANCH"] = os.getenv("GIT_BRANCH")
	return jenkins_env
end