FROM fedora:39

# Install ansible
RUN dnf update -y 
RUN dnf install -y ansible

WORKDIR /app
COPY . /app

# Run Ansible against tests 
CMD ["ansible-playbook", "tests/tests.yaml"]
