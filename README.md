## Electronical Payment System

The project goal is to concentrate in an e-commerce gateway to make different technologies and PSPs work to gather for providing more transparent, easy-to-use, reliable services in the financial technology market.



- Download Keycloak from (https://www.keycloak.org/downloads.html)
- Setup Anar Framework
```xml
git clone https://github.com/Anar-Framework/anar-parent.git
cd anar-parent/script/setup/
bash setup.sh
cd ../..
```
- Clone e-payment repository

```xml
git clone https://github.com/nsia-infosys/e-payment.git
```
- Open the e-payment with `intellij` IDE
- Add imported libraries in `pom.xml` from `File>New>Module from Existing Sources...`

- Setup e-payment-web
```xml
git clone https://github.com/nsia-infosys/e-payment-web
cd e-payment-web
npm install 
npm start
```

#### How to build the source code
- Run the Keycloak `cd keycloak_path/bin` and `bash standalone.sh`
- Run `main` method from `Application`

#### How to setup development enviroment
```
$ cd e-payment
$ bash setup.sh
$ mvn clean install -DskipTests
$ cd e-payment-core
$ mvn spring-boot:run
```

Client Sid UI: https://github.com/nsia-infosys/e-payment-web

#### Documentation

Refer to this repository **Wiki** section.
https://github.com/nsia-infosys/e-payment/wiki
