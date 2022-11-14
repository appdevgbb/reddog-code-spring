package com.microsoft.gbb.rasa.orderservice.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;

@Configuration
@Component
public class DataSourceConfig {

    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";

    @Value("${MYSQLURL:#{null}}")
    private String MY_SQL_URL;

    @Value("${MYSQLUSER:#{null}}")
    private String MY_SQL_USER;

    @Value("${MYSQLPASSWORD:#{null}}")
    private String MY_SQL_PASSWORD;

    @ConfigurationProperties(prefix = "spring.datasource")
    @Bean
    @Primary
    public DataSource dataSource() {
        DataSourceBuilder<?> dataSourceBuilder = DataSourceBuilder.create();
        dataSourceBuilder.driverClassName(JDBC_DRIVER);
        dataSourceBuilder.url(MY_SQL_URL);
        dataSourceBuilder.username(MY_SQL_USER);
        dataSourceBuilder.password(MY_SQL_PASSWORD);
        return dataSourceBuilder.build();
    }
}
