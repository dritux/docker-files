help :
	@echo " The following make targets are available"
	@echo "----------------------------------------------"
	@echo "| help          - print this message         |"
	@echo "| docker-clean  - remove any temporary files |"
	@echo "----------------------------------------------"

docker-clean:
	sudo chmod +x ./scripts/rm.sh
	./scripts/rm.sh
	sudo rm -rf jenkins_home
