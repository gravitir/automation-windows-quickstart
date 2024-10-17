# Automation Windows Quickstart

## Prerequisite

Before you begin, ensure you have the following:

* **SSH**: Ensure that you have SSH access to your target machine.
* **Passenger.sh Account**: You need an account on Passenger.sh.
* **Two Secretify Links**:
  * Secretify Login Data
  * Vault Password

## Usage

Follow these steps to get started:

### Step 1: Connect to the target

Use the SSH command to connect to your target machine (replace `YOUR_ACCOUNT` with your account name):

```bash
ssh YOUR_ACCOUNT@passenger@passenger.sh
```

### Step 2: Clone the repository

Clone the repository:

```
git clone https://github.com/gravitir/automation-windows-quickstart.git
```

Switch to the folder:

```bash
cd automation-windows-quickstart
```

### Step 3: Create the vault password

Open the first Secretify link provided to you and log in using the credentials you received (replace `SECRETIFY_USERNAME` with the username you received):

```bash
secretify login https://secretify.gravitir.ch -u SECRETIFY_USERNAME
```

You will be prompted to enter your password. If the login is successful, you should see the following output:

```bash
Login Succeeded
```

Now, create the vault password by executing the following command (replace `SECRETIFY_LINK` withe the second Secretify Link provided to you):

```bash
secretify reveal --link SECRETIFY_LINK | jq -j --raw-output .message > .vault_password
```

### Step 4: Run the playbook

To run the automation playbook, use the following command:

```bash
make get-file-content
```
