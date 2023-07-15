package nddev.inventapp.productservice.config;

import org.flywaydb.core.Flyway;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

@Configuration
public class FlywayConfig {

    @Bean
    public Flyway flyway(DataSource dataSource) {
        Flyway flyway = Flyway.configure()
                .locations("db/migration/default")
                .dataSource(dataSource)
                .schemas("public")
                .load();
        flyway.migrate();
        return flyway;
    }

    @Bean
    CommandLineRunner commandLineRunner(DataSource dataSource) {
        return args -> {
            Flyway flyway = Flyway.configure()
                    .locations("db/migration/default")
                    .dataSource(dataSource)
                    .schemas("public")
                    .load();
            flyway.migrate();
        };
    }
}