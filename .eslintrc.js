module.exports = {
  extends: [
  'airbnb-base',
'airbnb-typescript/base'],
  overrides: [
    {
      files: ['*.ts', '*.tsx'],
      parserOptions: {
        project: ['./tsconfig.json'],
      },
    },
  ],
};
