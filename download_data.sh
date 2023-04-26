

set_config(){
    python3 -m pip install pipenv
    pipenv shell
}

get_data() {
    mkdir data
    cd data
    curl -o survey.zip "https://info.stackoverflowsolutions.com/rs/719-EMH-566/images/stack-overflow-developer-survey-2022.zip"
    unzip survey.zip
}

echo $(get_data)
