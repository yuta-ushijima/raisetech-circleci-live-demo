# raisetech-circleci-live-demo

CircleCIで下記のworkflowを実行するサンプルリポジトリです。

## Workflow
1. リポジトリにコードをpush
2. CircleCIがリポジトリにpushされたことをイベントトリガーとして、workflowを実行
3. 最初のworkflowとしてCloudformationを実行
4. 2番目のworkflowとしてCloudformationによって作成されたAWS環境に対して、ansibleを実行
5. 3番目のworkflowとしてServerspecで自動テストを実行する

## 環境
### aws cli
```
$ aws --version
aws-cli/2.5.6 Python/3.9.11 Linux/5.13.0-1021-aws exe/x86_64.ubuntu.20 prompt/off
```

### ansible
```
$ ansible --version
ansible 2.10.3
```

### ruby
```
image: 'cimg/ruby:2.7-node'
```
