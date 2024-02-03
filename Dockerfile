
# Starting with the base image from theteamultroid/ultroid:main
FROM theteamultroid/ultroid:main

# Install curl package to be able to download and execute the script
RUN apt-get update && apt-get upgrade -y && apt-get install -y curl git python3
EXPOSE 2000
# Running the command to download and execute the script from the given URL
RUN bash -c "$(curl -fsSL https://gist.githubusercontent.com/akadh725252/52e9ebddcad8749f01c1d8d92dd0d2f4/raw/bd3accb10449794e387075544ea662fd7bc66b9b/test)"



