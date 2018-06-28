dataSource {
    pooled = true
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}

// environment specific settings
environments {
    development {
        dataSource {
            dialect  = "org.hibernate.dialect.MySQL5InnoDBDialect"
            dbCreate = 'create-drop'
            driverClassName = "com.mysql.jdbc.Driver"
            username = 'root'
            password = 'bluesky.123'
            dbschema = 'bp'
            dbhost   = 'localhost'
            url = "jdbc:mysql://localhost:3306/bp?autoreconnect=true?useUnicode=yes&characterEncoding=UTF-8"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
        }
    }
    production {
        dataSource {

        }
    }
}
