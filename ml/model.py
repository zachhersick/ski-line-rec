import tensorflow as tf
from tensorflow.keras import layers

def build_mlp(input_dim):
    return tf.keras.Sequential([
        layers.Input(shape=(input_dim,)),
        layers.Dense(64, activation='relu'),
        layers.Dense(32, activation='relu'),
        layers.Dense(1, activation='sigmoid')
    ])
