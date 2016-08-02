

#Spring Boot 1.3.0.RELEASE

#MyBatis3.3.0
#springboot JPA


#Lucence

#Freemark

#AngularjS

#JSP




项目集成了Mybatis分页插件和通用Mapper插件



##说明

虽然MyBatis官方提供了`mybatis-spring-boot-starter`，但是该配置的可以控制的地方太少，因此短时间不会直接使用该`starter`。

在集成MyBatis配置`MapperScannerConfigurer`需要特别注意，将该类单独放在一个配置文件中，例如本项目中的`MyBatisMapperScannerConfig`类：

