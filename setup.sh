#!/usr/bin/env bash

mix local.hex --force
mix local.rebar --force
mix archive.install --force hex nerves_bootstrap
