
cd /-

PATH="${HOME}/.local/bin:${PATH}"
PATH="${HOME}/.yarn/bin:${PATH}"

PROMPT_COMMAND="${PROMPT_COMMAND:-true}"

PROMPT_COMMAND="${PROMPT_COMMAND} && history -a"
PROMPT_COMMAND="${PROMPT_COMMAND} && history -c"
PROMPT_COMMAND="${PROMPT_COMMAND} && history -r"
