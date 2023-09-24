
docker stop portfolioios_swiftlint_container
docker rm portfolioios_swiftlint_container
docker run -it --name portfolioios_swiftlint_container -v `pwd`:`pwd` -w `pwd` ghcr.io/realm/swiftlint:latest | tee swiftlint.output.txt