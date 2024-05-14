if not exist "%homedrive%%homepath%\tdt_datasets" mkdir "%homedrive%%homepath%\tdt_datasets"

docker run -v "%cd%:/work" -v "%homedrive%%homepath%\tdt_datasets:/tdt_datasets" -w /work --rm -ti -p 3000:3000 -p 8000:8000 -p 5000:5000 -e ghcr.io/brain-bican/taxonomy-development-tools:tester %*
