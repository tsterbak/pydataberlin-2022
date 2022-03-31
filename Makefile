notebook:
	pipenv run jupyter notebook

clean:
	rm -rf mlruns/

mlflow-server:
	cd tutorial && pipenv run mlflow server --backend-store-uri mlruns/ --default-artifact-root mlruns/ --host 0.0.0.0 --port 5000
