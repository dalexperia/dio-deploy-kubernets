echo "Criando imagens ..."

docker build -t dalex2307/projeto-backend:1.0 backend/.
docker build -t dalex2307/projeto-database:1.0 database/.

echo "Realizando push das imagens..."

docker push dalex2307/projeto-backend:1.0
docker push dalex2307/projeto-database:1.0

echo "Criando serviços..."

kubectl apply -f ./services.yml

echo "Criando deploy..."

kubectl apply -f ./deployment.yml
