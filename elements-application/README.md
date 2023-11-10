# Preview Branches for every Preview Deployment on Kubernetes

This is an example project that shows how you can create a branch for every preview deployment on a Kubernetes cluster. 

# Local Development

If you want to use this project as a playground, you can you can set it up locally.

1. Clone this repo:

```bash
git clone https://github.com/evanshortiss/neon-kube-previews
```

2. Install dependencies:

```bash
cd neon-kube-previews
npm install
```

3. Copy the `.env.example` file to `.env`:

```bash
cp .env.example .env
```

4. Add the database credentials from the [Neon console](https://console.neon.tech/app/projects):

```bash
DATABASE_URL = "" # the pooled connection to the database. It has a `-pooler` suffix
DIRECT_DATABASE_URL = "" # the direct connection string to the database
```

4. Run the setup script which creates the tables and runs a seed script:

```bash
npm run setup

# Note, if the above command gives an error run this:
npx prisma migrate reset
```

5. Follow the instructions in the top-level README to configure GitHub Actions, and Argo CD on your Kubernetes cluster.

6. Open a pull request and see the preview deployment in action.



