# app.py

import logging
import argparse
import yaml
import pdn_32x
import time

def main(args):
    # Set log level
    if args.log_level == 'DEBUG':
        logging.getLogger().setLevel(logging.DEBUG)
    elif args.log_level == 'INFO':
        logging.getLogger().setLevel(logging.INFO)
    elif args.log_level == 'WARNING':
        logging.getLogger().setLevel(logging.WARNING)
    elif args.log_level == 'ERROR':
        logging.getLogger().setLevel(logging.ERROR)
    elif args.log_level == 'CRITICAL':
        logging.getLogger().setLevel(logging.CRITICAL)
    else:
        raise ValueError(f'Invalid log level: {args.log_level}')

    config_file = args.config
    with open(config_file, 'r') as f:
        config = yaml.safe_load(f)
    logging.info(f'Loaded config from {config_file}')

    test_pdn = pdn_32x.PDN()
    test_pdn.configure(config)
    test_pdn.build()
    test_pdn.analyze()

start_time = time.time()

if __name__ == '__main__':
    logging.basicConfig(level=logging.DEBUG)
    parser = argparse.ArgumentParser()
    parser.add_argument('--config', type=str, help='Path to config file')
    parser.add_argument('--log-level', type=str, default='INFO', help='Log level')
    args = parser.parse_args()

    main(args)

end_time = time.time()
execution_time = end_time - start_time
print(f"\nRum time: {execution_time:.6f} sec")
