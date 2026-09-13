# 攀岩多站积分与申诉

Go 后端工程为多站赛事保存成绩凭证、积分版本和申诉来源，SQLite 适合本地保存完整沿革。接口和排名解释应让工作人员能复核每站权重。

```bash
go test ./...
docker build -t climbing-series .
docker run --rm -p 8080:8080 climbing-series
```
