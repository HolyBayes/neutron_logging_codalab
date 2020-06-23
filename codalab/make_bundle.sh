# one-liner taken from https://stackoverflow.com/a/246128/3801744
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

mkdir $DIR/bundle

cp $DIR/competition/* $DIR/bundle

zip -j $DIR/bundle/data_train.zip $DIR/../data/data_train.npz $DIR/../data/data_test_X.npz
zip -j $DIR/bundle/data_validation.zip $DIR/../data/data_test_target.npz

zip -j $DIR/bundle/example_solution.zip $DIR/example_solution/*
zip -j $DIR/bundle/ingestion_program.zip $DIR/ingestion_program/* $DIR/config/*
zip -j $DIR/bundle/scoring_program.zip $DIR/scoring_program/* $DIR/config/

zip -j $DIR/bundle.zip $DIR/bundle/* && rm -rf $DIR/bundle