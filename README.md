#### Create 3 MySQL containers with master-slave row-based replication 

```bash
./build.sh
```

```bash
./insert.sh
```


><b>Рузультат</b> (3 колонки були в БД)

1 Зупинив один слейв потім відновив, всі данні підтягнулися 

2 Якщо видаляєш останню колонку то реплікація продовжується, але без останньої колонки

3 Якшо видаляєш середню колонку реплікація продовжкється, але в останню колоку пишиться данні з середньої.
Думав допоможе  формат з заданими колонками, але ні: ```insert into code (first, middle, last) values ($(date +%s+$RANDOM),$(date +%s+$RANDOM),$(date +%s+$RANDOM))```




>source: https://github.com/vbabak/docker-mysql-master-slave